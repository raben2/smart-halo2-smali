.class Lcom/instabug/library/visualusersteps/h$d$a;
.super Ljava/lang/Object;
.source "VisualUserStepsProvider.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/h$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/visualusersteps/h$d;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/h$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/h$d$a;->a:Lcom/instabug/library/visualusersteps/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capturing VisualUserStep failed error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time in MS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisualUserStepsProvider"

    .line 5
    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Landroid/net/Uri;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/visualusersteps/c$a;

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instabug/library/visualusersteps/c$a;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/h$d$a;->a:Lcom/instabug/library/visualusersteps/h$d;

    iget-object v1, v1, Lcom/instabug/library/visualusersteps/h$d;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "landscape"

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/visualusersteps/c$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "portrait"

    .line 9
    invoke-virtual {v0, v1}, Lcom/instabug/library/visualusersteps/c$a;->b(Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/h$d$a;->a:Lcom/instabug/library/visualusersteps/h$d;

    iget-object v1, v1, Lcom/instabug/library/visualusersteps/h$d;->c:Lcom/instabug/library/visualusersteps/c;

    invoke-virtual {v1, v0}, Lcom/instabug/library/visualusersteps/c;->a(Lcom/instabug/library/visualusersteps/c$a;)V

    .line 14
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->encrypt(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method
