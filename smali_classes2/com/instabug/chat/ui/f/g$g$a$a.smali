.class Lcom/instabug/chat/ui/f/g$g$a$a;
.super Ljava/lang/Object;
.source "MessagesListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/g$g$a;->onBitmapReady(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/instabug/chat/ui/f/g$g$a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/g$g$a;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g$g$a$a;->b:Lcom/instabug/chat/ui/f/g$g$a;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/g$g$a$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$g$a$a;->b:Lcom/instabug/chat/ui/f/g$g$a;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$g$a;->a:Lcom/instabug/chat/ui/f/g$g;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$g;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instabug/chat/ui/f/g$g$a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$g$a$a;->b:Lcom/instabug/chat/ui/f/g$g$a;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$g$a;->a:Lcom/instabug/chat/ui/f/g$g;

    iget-boolean v1, v0, Lcom/instabug/chat/ui/f/g$g;->c:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$g;->d:Lcom/instabug/chat/ui/f/g;

    invoke-static {v0}, Lcom/instabug/chat/ui/f/g;->d(Lcom/instabug/chat/ui/f/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$g$a$a;->b:Lcom/instabug/chat/ui/f/g$g$a;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$g$a;->a:Lcom/instabug/chat/ui/f/g$g;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$g;->d:Lcom/instabug/chat/ui/f/g;

    invoke-static {v0}, Lcom/instabug/chat/ui/f/g;->e(Lcom/instabug/chat/ui/f/g;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/ui/f/g$g$a$a;->b:Lcom/instabug/chat/ui/f/g$g$a;

    iget-object v1, v1, Lcom/instabug/chat/ui/f/g$g$a;->a:Lcom/instabug/chat/ui/f/g$g;

    iget-object v1, v1, Lcom/instabug/chat/ui/f/g$g;->d:Lcom/instabug/chat/ui/f/g;

    invoke-virtual {v1}, Lcom/instabug/chat/ui/f/g;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$g$a$a;->b:Lcom/instabug/chat/ui/f/g$g$a;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$g$a;->a:Lcom/instabug/chat/ui/f/g$g;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/g$g;->d:Lcom/instabug/chat/ui/f/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/ui/f/g;Z)Z

    :cond_0
    return-void
.end method
