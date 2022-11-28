.class Lcom/instabug/chat/f/a$e;
.super Ljava/lang/Object;
.source "NotificationBarInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic b:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic c:Lcom/instabug/chat/f/a$o;

.field final synthetic d:Lcom/instabug/chat/f/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;Landroid/widget/FrameLayout$LayoutParams;Lcom/instabug/chat/f/a$o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/a$e;->d:Lcom/instabug/chat/f/a;

    iput-object p2, p0, Lcom/instabug/chat/f/a$e;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/instabug/chat/f/a$e;->b:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p4, p0, Lcom/instabug/chat/f/a$e;->c:Lcom/instabug/chat/f/a$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/a$e;->d:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/f/a$e;->d:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instabug/chat/f/a$e;->d:Lcom/instabug/chat/f/a;

    invoke-static {v1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/chat/f/a$e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instabug/chat/f/a$e;->d:Lcom/instabug/chat/f/a;

    invoke-static {v1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/chat/f/a$e;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/chat/f/a$e;->d:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/f/a$e;->c:Lcom/instabug/chat/f/a$o;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
