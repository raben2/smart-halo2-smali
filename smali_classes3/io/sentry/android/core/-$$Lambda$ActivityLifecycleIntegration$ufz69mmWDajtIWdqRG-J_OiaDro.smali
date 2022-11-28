.class public final synthetic Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$ufz69mmWDajtIWdqRG-J_OiaDro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Scope$IWithTransaction;


# instance fields
.field private final synthetic f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field private final synthetic f$1:Lio/sentry/Scope;

.field private final synthetic f$2:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/Scope;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$ufz69mmWDajtIWdqRG-J_OiaDro;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$ufz69mmWDajtIWdqRG-J_OiaDro;->f$1:Lio/sentry/Scope;

    iput-object p3, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$ufz69mmWDajtIWdqRG-J_OiaDro;->f$2:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final accept(Lio/sentry/ITransaction;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$ufz69mmWDajtIWdqRG-J_OiaDro;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$ufz69mmWDajtIWdqRG-J_OiaDro;->f$1:Lio/sentry/Scope;

    iget-object v2, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$ufz69mmWDajtIWdqRG-J_OiaDro;->f$2:Lio/sentry/ITransaction;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->lambda$applyScope$1(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/Scope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V

    return-void
.end method
