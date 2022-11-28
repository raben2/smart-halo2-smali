.class public final synthetic Lio/sentry/-$$Lambda$ShutdownHookIntegration$60SUMMiHAIRYjIPnRXXo-IuPeBA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/sentry/IHub;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/IHub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/-$$Lambda$ShutdownHookIntegration$60SUMMiHAIRYjIPnRXXo-IuPeBA;->f$0:Lio/sentry/IHub;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/-$$Lambda$ShutdownHookIntegration$60SUMMiHAIRYjIPnRXXo-IuPeBA;->f$0:Lio/sentry/IHub;

    invoke-static {v0}, Lio/sentry/ShutdownHookIntegration;->lambda$register$0(Lio/sentry/IHub;)V

    return-void
.end method
