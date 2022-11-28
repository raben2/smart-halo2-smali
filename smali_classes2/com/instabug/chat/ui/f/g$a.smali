.class Lcom/instabug/chat/ui/f/g$a;
.super Ljava/lang/Object;
.source "MessagesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/g;->c(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/e;

.field final synthetic b:Lcom/instabug/chat/ui/f/g;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/e/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g$a;->b:Lcom/instabug/chat/ui/f/g;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/g$a;->a:Lcom/instabug/chat/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$a;->b:Lcom/instabug/chat/ui/f/g;

    invoke-static {p1}, Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/chat/ui/f/g$i;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$a;->a:Lcom/instabug/chat/e/e;

    invoke-virtual {v0}, Lcom/instabug/chat/e/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instabug/chat/ui/f/g$i;->d(Ljava/lang/String;)V

    return-void
.end method
