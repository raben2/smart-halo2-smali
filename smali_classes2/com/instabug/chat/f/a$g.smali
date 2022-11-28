.class Lcom/instabug/chat/f/a$g;
.super Lcom/instabug/chat/f/a$o;
.source "NotificationBarInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;Lcom/instabug/chat/e/f;Lcom/instabug/chat/f/a$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/instabug/chat/e/f;

.field final synthetic c:Lcom/instabug/chat/f/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;Lcom/instabug/chat/e/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/a$g;->c:Lcom/instabug/chat/f/a;

    iput-object p2, p0, Lcom/instabug/chat/f/a$g;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/instabug/chat/f/a$g;->b:Lcom/instabug/chat/e/f;

    invoke-direct {p0, p1}, Lcom/instabug/chat/f/a$o;-><init>(Lcom/instabug/chat/f/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/a$g;->c:Lcom/instabug/chat/f/a;

    iget-object v1, p0, Lcom/instabug/chat/f/a$g;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/instabug/chat/f/a$g;->b:Lcom/instabug/chat/e/f;

    invoke-static {v0, v1, v2}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Landroid/app/Activity;Lcom/instabug/chat/e/f;)V

    return-void
.end method

.method b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/a$g;->c:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/f/a$g;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/instabug/library/util/ScreenUtility;->getScreenHeight(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/f/a$g;->c:Lcom/instabug/chat/f/a;

    iget-object v1, p0, Lcom/instabug/chat/f/a$g;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/instabug/chat/f/a$g;->b:Lcom/instabug/chat/e/f;

    invoke-static {v0, v1, v2}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Landroid/app/Activity;Lcom/instabug/chat/e/f;)V

    return-void
.end method
