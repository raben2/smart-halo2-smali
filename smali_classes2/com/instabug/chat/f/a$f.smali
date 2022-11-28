.class Lcom/instabug/chat/f/a$f;
.super Ljava/lang/Object;
.source "NotificationBarInvoker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;Lcom/instabug/chat/f/a$o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/instabug/chat/f/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/a$f;->b:Lcom/instabug/chat/f/a;

    iput-object p2, p0, Lcom/instabug/chat/f/a$f;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/instabug/chat/f/a$f;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Lcom/instabug/chat/f/a$f;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double v0, v0, v4

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    .line 13
    iget-object v0, p0, Lcom/instabug/chat/f/a$f;->b:Lcom/instabug/chat/f/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Z)Z

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/instabug/chat/f/a$f;->b:Lcom/instabug/chat/f/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Z)Z

    .line 17
    iget-object v0, p0, Lcom/instabug/chat/f/a$f;->b:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->d(Lcom/instabug/chat/f/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/chat/f/a$f;->b:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->e(Lcom/instabug/chat/f/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/instabug/chat/f/a$f;->b:Lcom/instabug/chat/f/a;

    iget-object v1, p0, Lcom/instabug/chat/f/a$f;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
