;;; init.el --- -*- lexical-binding: t -*-

;; Defer garbage collection until later
(setq gc-cons-threshold most-positive-fixnum)

;; Disable package-initialization
(setq package-enable-at-startup nil)

;; Prevent blinking by disabling GUI elements early
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Stop resizing frame when fonts load in
(setq frame-inhibit-implied-resize t)

;; Finally load our actual configuration
(require 'org)
(org-babel-load-file (concat user-emacs-directory "config.org"))

