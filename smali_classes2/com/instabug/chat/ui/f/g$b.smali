.class Lcom/instabug/chat/ui/f/g$b;
.super Ljava/lang/Object;
.source "MessagesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/c;

.field final synthetic b:Lcom/instabug/chat/ui/f/g;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g$b;->b:Lcom/instabug/chat/ui/f/g;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/g$b;->a:Lcom/instabug/chat/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$b;->b:Lcom/instabug/chat/ui/f/g;

    invoke-static {p1}, Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/chat/ui/f/g$i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$b;->a:Lcom/instabug/chat/e/c;

    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$b;->b:Lcom/instabug/chat/ui/f/g;

    invoke-static {p1}, Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/chat/ui/f/g$i;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$b;->a:Lcom/instabug/chat/e/c;

    invoke-virtual {v0}, Lcom/instabug/chat/e/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instabug/chat/ui/f/g$i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$b;->a:Lcom/instabug/chat/e/c;

    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$b;->b:Lcom/instabug/chat/ui/f/g;

    invoke-static {p1}, Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/chat/ui/f/g$i;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$b;->a:Lcom/instabug/chat/e/c;

    invoke-virtual {v0}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instabug/chat/ui/f/g$i;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
