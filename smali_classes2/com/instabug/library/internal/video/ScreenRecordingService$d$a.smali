.class Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;
.super Ljava/lang/Object;
.source "ScreenRecordingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a(Lcom/instabug/library/internal/video/ScreenRecordingService$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

.field final synthetic b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/ScreenRecordingService$d;Lcom/instabug/library/internal/video/ScreenRecordingService$Action;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    iput-object p2, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
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

    .line 3
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    iget-object v0, v0, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {v0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    iget-object v0, v0, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {v0}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object v0

    new-instance v1, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;-><init>(Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;)V

    invoke-virtual {v0, v1}, Lcom/instabug/library/internal/video/b;->a(Lcom/instabug/library/internal/video/d/f$d;)V

    :cond_0
    return-void
.end method
