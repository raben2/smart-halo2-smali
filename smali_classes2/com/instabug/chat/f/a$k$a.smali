.class Lcom/instabug/chat/f/a$k$a;
.super Ljava/lang/Object;
.source "NotificationBarInvoker.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/f/a$k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/f/a$k;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/a$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/a$k$a;->a:Lcom/instabug/chat/f/a$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailedToLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/a$k$a;->a:Lcom/instabug/chat/f/a$k;

    iget-object v0, v0, Lcom/instabug/chat/f/a$k;->d:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->e(Lcom/instabug/chat/f/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/f/a$k$a;->a:Lcom/instabug/chat/f/a$k;

    iget-object v1, v0, Lcom/instabug/chat/f/a$k;->d:Lcom/instabug/chat/f/a;

    iget-object v0, v0, Lcom/instabug/chat/f/a$k;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onBitmapReady(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/chat/f/a$k$a$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/chat/f/a$k$a$a;-><init>(Lcom/instabug/chat/f/a$k$a;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postMainThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method
