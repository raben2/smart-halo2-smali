.class Lcom/instabug/chat/f/a$k$a$a;
.super Ljava/lang/Object;
.source "NotificationBarInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/f/a$k$a;->onBitmapReady(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/instabug/chat/f/a$k$a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/a$k$a;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/a$k$a$a;->b:Lcom/instabug/chat/f/a$k$a;

    iput-object p2, p0, Lcom/instabug/chat/f/a$k$a$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/a$k$a$a;->b:Lcom/instabug/chat/f/a$k$a;

    iget-object v0, v0, Lcom/instabug/chat/f/a$k$a;->a:Lcom/instabug/chat/f/a$k;

    iget-object v1, v0, Lcom/instabug/chat/f/a$k;->d:Lcom/instabug/chat/f/a;

    iget-object v0, v0, Lcom/instabug/chat/f/a$k;->c:Lcom/instabug/library/ui/custom/CircularImageView;

    iget-object v2, p0, Lcom/instabug/chat/f/a$k$a$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Lcom/instabug/library/ui/custom/CircularImageView;Landroid/graphics/Bitmap;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/f/a$k$a$a;->b:Lcom/instabug/chat/f/a$k$a;

    iget-object v0, v0, Lcom/instabug/chat/f/a$k$a;->a:Lcom/instabug/chat/f/a$k;

    iget-object v0, v0, Lcom/instabug/chat/f/a$k;->d:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->e(Lcom/instabug/chat/f/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/f/a$k$a$a;->b:Lcom/instabug/chat/f/a$k$a;

    iget-object v0, v0, Lcom/instabug/chat/f/a$k$a;->a:Lcom/instabug/chat/f/a$k;

    iget-object v1, v0, Lcom/instabug/chat/f/a$k;->d:Lcom/instabug/chat/f/a;

    iget-object v0, v0, Lcom/instabug/chat/f/a$k;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
