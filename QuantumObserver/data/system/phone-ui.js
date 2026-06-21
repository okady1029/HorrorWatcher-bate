(function () {
    "use strict";

    function gameVars() {
        if (!window.TYRANO || !TYRANO.kag || !TYRANO.kag.variable) return null;
        return TYRANO.kag.variable.f;
    }

    function escapeHtml(value) {
        return String(value).replace(/[&<>"']/g, function (c) {
            return { "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c];
        });
    }

    function ensureState() {
        var f = gameVars();
        if (!f) return null;
        if (!Array.isArray(f.phone_messages)) f.phone_messages = [];
        if (typeof f.phone_unread !== "number") f.phone_unread = 0;
        if (typeof f.phone_key_count !== "number") f.phone_key_count = 0;
        if (typeof f.phone_airplane !== "boolean") f.phone_airplane = false;
        return f;
    }

    function updateBadge() {
        var f = ensureState();
        var badge = document.querySelector(".quantum-phone-badge");
        if (!f || !badge) return;
        badge.textContent = f.phone_unread > 99 ? "99+" : String(f.phone_unread || 0);
        badge.hidden = !f.phone_unread;
    }

    function renderMessages() {
        var f = ensureState();
        var list = document.querySelector(".quantum-phone-list");
        var status = document.querySelector(".quantum-phone-status");
        if (!f || !list) return;
        status.textContent = f.phone_airplane ? "機内モード" : "Q-NET  02:13";
        if (!f.phone_messages.length) {
            list.innerHTML = '<p class="quantum-phone-empty">時系列外メッセージはありません</p>';
            return;
        }
        list.innerHTML = f.phone_messages.slice().reverse().map(function (m) {
            return '<article class="quantum-phone-message' + (m.key ? ' is-key' : '') + '">' +
                '<header><strong>' + escapeHtml(m.sender) + '</strong><time>' + escapeHtml(m.time) + '</time></header>' +
                '<p>' + escapeHtml(m.text) + '</p>' +
                (m.key ? '<small>◆ 重要メッセージ・保護済み</small>' : '') + '</article>';
        }).join("");
    }

    function openPhone() {
        var f = ensureState();
        if (!f) return;
        f.phone_unread = 0;
        renderMessages();
        updateBadge();
        document.querySelector(".quantum-phone-overlay").classList.add("is-open");
    }

    function closePhone() {
        document.querySelector(".quantum-phone-overlay").classList.remove("is-open");
    }

    function receive(id, sender, text, time, isKey) {
        var f = ensureState();
        if (!f || f.phone_messages.some(function (m) { return m.id === id; })) return;
        f.phone_messages.push({ id: id, sender: sender, text: text, time: time || "02:13", key: !!isKey });
        f.phone_unread += 1;
        if (isKey) {
            f["phone_clue_" + id] = true;
            f.phone_key_count += 1;
        }
        updateBadge();
        var toast = document.querySelector(".quantum-phone-toast");
        toast.innerHTML = '<strong>' + escapeHtml(sender) + '</strong><span>' + escapeHtml(text) + '</span>';
        toast.classList.remove("is-showing");
        void toast.offsetWidth;
        toast.classList.add("is-showing");
        if (navigator.vibrate) navigator.vibrate([80, 50, 80]);
    }

    function reset() {
        var f = ensureState();
        if (!f) return;
        f.phone_messages = [];
        f.phone_unread = 0;
        f.phone_key_count = 0;
        f.phone_airplane = false;
        updateBadge();
    }

    function mount() {
        if (document.querySelector(".quantum-phone-button")) return;
        document.body.insertAdjacentHTML("beforeend", '<button class="quantum-phone-button" aria-label="スマホを開く">▣<span class="quantum-phone-badge" hidden>0</span></button><div class="quantum-phone-toast" aria-live="polite"></div><section class="quantum-phone-overlay" aria-label="量子通信端末"><div class="quantum-phone-shell"><header class="quantum-phone-top"><span class="quantum-phone-status">Q-NET 02:13</span><button class="quantum-phone-close" aria-label="閉じる">×</button></header><h2>時系列外メッセージ</h2><div class="quantum-phone-list"></div></div></section>');
        document.querySelector(".quantum-phone-button").addEventListener("click", openPhone);
        document.querySelector(".quantum-phone-close").addEventListener("click", closePhone);
        document.querySelector(".quantum-phone-overlay").addEventListener("click", function (e) {
            if (e.target === e.currentTarget) closePhone();
        });
        updateBadge();
    }

    window.quantumPhone = { receive: receive, open: openPhone, close: closePhone, reset: reset, update: updateBadge };
    if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", mount);
    else mount();
}());
