.class Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;
.super Ljava/lang/Object;
.source "ScreenRecordingService.java"

# interfaces
.implements Lcom/instabug/library/internal/video/d/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {p1}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 6
    :cond_0
    sget-object p1, Lcom/instabug/library/internal/video/ScreenRecordingService$f;->a:[I

    iget-object v0, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;

    iget-object v0, v0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$Action;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {p1}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->autoScreenRecordingMaxDuration()I

    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/instabug/library/internal/video/b;->a(I)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {p1}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/b;->b()V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a$a;->a:Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d$a;->b:Lcom/instabug/library/internal/video/ScreenRecordingService$d;

    iget-object p1, p1, Lcom/instabug/library/internal/video/ScreenRecordingService$d;->a:Lcom/instabug/library/internal/video/ScreenRecordingService;

    invoke-static {p1}, Lcom/instabug/library/internal/video/ScreenRecordingService;->c(Lcom/instabug/library/internal/video/ScreenRecordingService;)Lcom/instabug/library/internal/video/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/b;->a()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
