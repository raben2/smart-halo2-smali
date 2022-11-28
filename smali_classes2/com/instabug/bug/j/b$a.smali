.class Lcom/instabug/bug/j/b$a;
.super Ljava/lang/Object;
.source "ExternalScreenRecordHelper.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/j/b;->b()V
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
.field final synthetic a:Lcom/instabug/bug/j/b;


# direct methods
.method constructor <init>(Lcom/instabug/bug/j/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/j/b$a;->a:Lcom/instabug/bug/j/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/internal/video/ScreenRecordingEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/j/b$a;->a:Lcom/instabug/bug/j/b;

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->getVideoUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/instabug/bug/j/b;->a(Lcom/instabug/bug/j/b;Landroid/net/Uri;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/bug/j/b$a;->a:Lcom/instabug/bug/j/b;

    invoke-virtual {p1}, Lcom/instabug/bug/j/b;->clear()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->release()V

    .line 6
    iget-object v0, p0, Lcom/instabug/bug/j/b$a;->a:Lcom/instabug/bug/j/b;

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->getVideoUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/instabug/bug/j/b;->a(Lcom/instabug/bug/j/b;Landroid/net/Uri;)V

    .line 7
    iget-object p1, p0, Lcom/instabug/bug/j/b$a;->a:Lcom/instabug/bug/j/b;

    invoke-virtual {p1}, Lcom/instabug/bug/j/b;->clear()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/library/internal/video/ScreenRecordingEvent;->getStatus()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 9
    invoke-static {}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->getInstance()Lcom/instabug/library/internal/video/InternalScreenRecordHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/internal/video/InternalScreenRecordHelper;->release()V

    .line 10
    iget-object p1, p0, Lcom/instabug/bug/j/b$a;->a:Lcom/instabug/bug/j/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/bug/j/b;->a(Lcom/instabug/bug/j/b;Landroid/net/Uri;)V

    .line 11
    iget-object p1, p0, Lcom/instabug/bug/j/b$a;->a:Lcom/instabug/bug/j/b;

    invoke-virtual {p1}, Lcom/instabug/bug/j/b;->clear()V

    :cond_2
    :goto_0
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

    invoke-virtual {p0, p1}, Lcom/instabug/bug/j/b$a;->a(Lcom/instabug/library/internal/video/ScreenRecordingEvent;)V

    return-void
.end method
