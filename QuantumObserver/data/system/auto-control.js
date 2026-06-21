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
        setInterval(updateButton, 300);
    }

    if (document.readyState === "loading") document.addEventListener("DOMContentLoaded", mount);
    else mount();
}());
