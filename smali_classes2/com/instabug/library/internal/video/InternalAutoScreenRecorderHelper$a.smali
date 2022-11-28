.class Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$a;
.super Ljava/lang/Object;
.source "InternalAutoScreenRecorderHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->subscribeToSessionEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/model/session/SessionState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$a;->a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/session/SessionState;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/model/session/SessionState;->FINISH:Lcom/instabug/library/model/session/SessionState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$a;->a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->isCrashOccurred()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$a;->a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;->getInstance()Lcom/instabug/library/core/eventbus/AutoScreenRecordingEventBus;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/internal/video/ScreenRecordingService$Action;->STOP_DELETE:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    .line 4
    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instabug/library/settings/SettingsManager;->setAutoScreenRecordingDenied(Z)V

    .line 7
    iget-object p1, p0, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$a;->a:Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;

    invoke-static {p1}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;->access$000(Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper;)V

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
    check-cast p1, Lcom/instabug/library/model/session/SessionState;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/video/InternalAutoScreenRecorderHelper$a;->a(Lcom/instabug/library/model/session/SessionState;)V

    return-void
.end method
