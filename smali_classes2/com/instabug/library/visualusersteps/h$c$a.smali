.class Lcom/instabug/library/visualusersteps/h$c$a;
.super Ljava/lang/Object;
.source "VisualUserStepsProvider.java"

# interfaces
.implements Lcom/instabug/library/screenshot/ScreenshotProvider$ScreenshotCapturingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/h$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/visualusersteps/h$c;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/h$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/h$c$a;->a:Lcom/instabug/library/visualusersteps/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenshotCapturedSuccessfully(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h$c$a;->a:Lcom/instabug/library/visualusersteps/h$c;

    iget-object v0, v0, Lcom/instabug/library/visualusersteps/h$c;->c:Lcom/instabug/library/visualusersteps/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/h;Z)Z

    .line 3
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h$c$a;->a:Lcom/instabug/library/visualusersteps/h$c;

    iget-object v1, v0, Lcom/instabug/library/visualusersteps/h$c;->c:Lcom/instabug/library/visualusersteps/h;

    iget-object v2, v0, Lcom/instabug/library/visualusersteps/h$c;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/instabug/library/visualusersteps/h$c;->b:Lcom/instabug/library/visualusersteps/c;

    invoke-static {v1, v2, p1, v0}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/h;Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instabug/library/visualusersteps/c;)V

    return-void
.end method

.method public onScreenshotCapturingFailed(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h$c$a;->a:Lcom/instabug/library/visualusersteps/h$c;

    iget-object v0, v0, Lcom/instabug/library/visualusersteps/h$c;->c:Lcom/instabug/library/visualusersteps/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/library/visualusersteps/h;->a(Lcom/instabug/library/visualusersteps/h;Z)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capturing VisualUserStep failed error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time in MS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisualUserStepsProvider"

    .line 6
    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
