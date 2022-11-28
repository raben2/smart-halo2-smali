.class Lcom/instabug/library/internal/video/b$a;
.super Ljava/lang/Object;
.source "ScreenRecordingSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/internal/video/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/internal/video/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/internal/video/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/internal/video/b$a;->a:Lcom/instabug/library/internal/video/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instabug/library/internal/video/b$a;->a:Lcom/instabug/library/internal/video/b;

    invoke-static {v1}, Lcom/instabug/library/internal/video/b;->a(Lcom/instabug/library/internal/video/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ScreenRecordingSession"

    const-string v1, "Screen recording file doesn\'t exist - couldn\'t be deleted"

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ScreenRecordingSession"

    const-string v1, "Screen recording file couldn\'t be deleted"

    .line 8
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/internal/video/b$a;->a:Lcom/instabug/library/internal/video/b;

    invoke-static {v0}, Lcom/instabug/library/internal/video/b;->b(Lcom/instabug/library/internal/video/b;)Lcom/instabug/library/internal/video/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/internal/video/b$c;->b()V

    return-void
.end method
