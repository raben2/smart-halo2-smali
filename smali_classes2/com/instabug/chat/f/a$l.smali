.class Lcom/instabug/chat/f/a$l;
.super Lcom/instabug/chat/f/a$m;
.source "NotificationBarInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/f/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/f/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/a$l;->a:Lcom/instabug/chat/f/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instabug/chat/f/a$m;-><init>(Lcom/instabug/chat/f/a;Lcom/instabug/chat/f/a$d;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/f/a$l;->a:Lcom/instabug/chat/f/a;

    invoke-static {p1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
