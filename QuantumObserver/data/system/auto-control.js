(function () {
    "use strict";

    function getButton() {
        return document.querySelector(".auto-advance-button");
    }

    function isAuto() {
        return !!(window.TYRANO && TYRANO.kag && TYRANO.kag.stat && TYRANO.kag.stat.is_auto);
    }

    function updateButton() {
        var button = getButton();
        if (!button) return;
        var active = isAuto();
        button.classList.toggle("is-active", active);
        button.setAttribute("aria-pressed", active ? "true" : "false");
        button.innerHTML = active ? '<span>▶</span> AUTO ON' : '<span>▷</span> AUTO';
    }

    function alignControls() {
        var base = document.getElementById("tyrano_base");
        var guide = document.querySelector(".mobile-control-guide");
        var button = getButton();
        if (!base || !guide || !button) return;
        var rect = base.getBoundingClientRect();
        var right = Math.max(8, window.innerWidth - Math.min(rect.right, window.innerWidth) + 8);
        var top = Math.max(8, rect.top + 8);
        guide.style.right = right + "px";
        guide.style.top = top + "px";
        button.style.right = right + "px";
        button.style.top = (top + guide.offsetHeight + 6) + "px";
    }

    function toggleAuto(event) {
        event.preventDefault();
        event.stopPropagation();
        if (!window.TYRANO || !TYRANO.kag || !TYRANO.kag.ftag) return;

        if (isAuto()) {
            TYRANO.kag.ftag.startTag("autostop", { next: "false" });
        } else {
            /* Choices and the title screen must always wait for the player. */
            if (document.querySelector(".glink_button")) {
                var button = getButton();
                button.classList.add("is-blocked");
                button.textContent = "選択肢を選んでください";
                setTimeout(function () {
                    button.classList.remove("is-blocked");
                    updateButton();
                }, 1400);
                return;
            }
            /* About 1.5–2.5 seconds for an average Japanese message. */
            TYRANO.kag.config.autoSpeed = "900";
            TYRANO.kag.config.autoSpeedWithText = "35";
            TYRANO.kag.ftag.startTag("autostart", {});
        }
        setTimeout(updateButton, 0);
    }

    function mount() {
        var button = getButton();
        if (!button || button.dataset.ready) return;
        button.dataset.ready = "true";
        button.addEventListener("click", toggleAuto, true);
        button.addEventListener("touchend", function (event) {
            event.stopPropagation();
        }, true);
        updateButton();
        alignControls();
        window.addEventListener("resize", alignControls);
        window.addEventListener("orientationchange", function () { setTimeout(alignControls, 150); });
        setTimeout(alignControls, 500);
        setInterval(updateButton, 300);
    }

    if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", mount);
    else mount();
}());
