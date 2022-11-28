.class Lcom/instabug/library/internal/video/ScreenRecordingService$c;
.super Ljava/lang/Object;
.source "ScreenRecordingService.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/ScreenRecordingService;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/internal/video/ScreenRecordingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/ScreenRecordingService;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/ScreenRecordingService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$c;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/internal/video/ScreenRecordingEvent;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->isScreenCurrentlyRecorded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setScreenCurrentlyRecorded(Z)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$c;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {v0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$c;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {v0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingService$c$a;

    invoke-direct {v1, p0, p1}, Lcom/instabug/library/internal/video/ScreenRecordingService$c$a;-><init>(Lcom/instabug/library/internal/video/ScreenRecordingService$c;Lcom/instabug/library/internal/video/ScreenRecordingEvent;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/video/b;->a(Lcom/instabug/library/internal/video/d/f$d;)V

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
    check-cast p1, Lcom/instabug/library/internal/video/ScreenRecordingEvent;

    invoke-virtual {p0, p1}, Lcom/instabug/library/internal/video/ScreenRecordingService$c;->a(Lcom/instabug/library/internal/video/ScreenRecordingEvent;)V

    return-void
.end method
