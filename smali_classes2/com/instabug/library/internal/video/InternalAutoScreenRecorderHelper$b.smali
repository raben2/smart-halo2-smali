.class Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b;
.super Ljava/lang/Object;
.source "InternalAutoScreenRecorderHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->subscribeToActivityLifeCycleEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/tracking/ActivityLifeCycleEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b;->a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/tracking/ActivityLifeCycleEvent;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;->RESUMED:Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b;->a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/settings/SettingsManager;->isProcessingForeground()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b;->a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    invoke-static {p1}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->access$100(Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;)V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 5
    new-instance v0, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b$a;-><init>(Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/library/tracking/ActivityLifeCycleEvent;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$b;->a(Lcom/instabug/library/tracking/ActivityLifeCycleEvent;)V

    return-void
.end method
