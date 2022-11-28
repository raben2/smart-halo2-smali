.class public final synthetic Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$B4ET7o0CtjJQhBm2p22k1_54m1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field private final synthetic f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field private final synthetic f$1:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$B4ET7o0CtjJQhBm2p22k1_54m1c;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$B4ET7o0CtjJQhBm2p22k1_54m1c;->f$1:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/Scope;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$B4ET7o0CtjJQhBm2p22k1_54m1c;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/-$$Lambda$ActivityLifecycleIntegration$B4ET7o0CtjJQhBm2p22k1_54m1c;->f$1:Lio/sentry/ITransaction;

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->lambda$startTracing$0(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ITransaction;Lio/sentry/Scope;)V

    return-void
.end method
