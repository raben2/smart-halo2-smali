.class final Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneStateBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhoneStateChangeListener"
.end annotation


# instance fields
.field private final hub:Lio/sentry/IHub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/IHub;)V
    .locals 0
    .param p1    # Lio/sentry/IHub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 86
    iput-object p1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;->hub:Lio/sentry/IHub;

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 94
    new-instance p1, Lio/sentry/Breadcrumb;

    invoke-direct {p1}, Lio/sentry/Breadcrumb;-><init>()V

    const-string p2, "system"

    .line 95
    invoke-virtual {p1, p2}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string p2, "device.event"

    .line 96
    invoke-virtual {p1, p2}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    const-string p2, "action"

    const-string v0, "CALL_STATE_RINGING"

    .line 97
    invoke-virtual {p1, p2, v0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "Device ringing"

    .line 98
    invoke-virtual {p1, p2}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    .line 99
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p1, p2}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 100
    iget-object p2, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;->hub:Lio/sentry/IHub;

    invoke-interface {p2, p1}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    :cond_0
    return-void
.end method
