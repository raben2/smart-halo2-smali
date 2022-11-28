.class Lcom/instabug/chat/ui/f/g$c;
.super Ljava/lang/Object;
.source "MessagesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/g;->f(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/instabug/chat/ui/f/g$j;

.field final synthetic d:Lcom/instabug/chat/ui/f/g;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/e/c;Ljava/lang/String;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g$c;->d:Lcom/instabug/chat/ui/f/g;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/g$c;->a:Lcom/instabug/chat/e/c;

    iput-object p3, p0, Lcom/instabug/chat/ui/f/g$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/instabug/chat/ui/f/g$c;->c:Lcom/instabug/chat/ui/f/g$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$c;->a:Lcom/instabug/chat/e/c;

    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->d()Lcom/instabug/chat/e/c$a;

    move-result-object p1

    sget-object v0, Lcom/instabug/chat/e/c$a;->NONE:Lcom/instabug/chat/e/c$a;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$c;->d:Lcom/instabug/chat/ui/f/g;

    invoke-static {p1}, Lcom/instabug/chat/ui/f/g;->b(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/library/internal/media/AudioPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/instabug/library/internal/media/AudioPlayer;->start(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$c;->a:Lcom/instabug/chat/e/c;

    sget-object v0, Lcom/instabug/chat/e/c$a;->PLAYING:Lcom/instabug/chat/e/c$a;

    invoke-virtual {p1, v0}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$a;)Lcom/instabug/chat/e/c;

    .line 4
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$c;->c:Lcom/instabug/chat/ui/f/g$j;

    iget-object p1, p1, Lcom/instabug/chat/ui/f/g$j;->f:Landroid/widget/ImageView;

    sget v0, Lcom/instabug/chat/R$drawable;->ibg_core_ic_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$c;->d:Lcom/instabug/chat/ui/f/g;

    invoke-static {p1}, Lcom/instabug/chat/ui/f/g;->b(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/library/internal/media/AudioPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/internal/media/AudioPlayer;->pause()V

    .line 8
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$c;->a:Lcom/instabug/chat/e/c;

    sget-object v0, Lcom/instabug/chat/e/c$a;->NONE:Lcom/instabug/chat/e/c$a;

    invoke-virtual {p1, v0}, Lcom/instabug/chat/e/c;->a(Lcom/instabug/chat/e/c$a;)Lcom/instabug/chat/e/c;

    .line 9
    iget-object p1, p0, Lcom/instabug/chat/ui/f/g$c;->c:Lcom/instabug/chat/ui/f/g$j;

    iget-object p1, p1, Lcom/instabug/chat/ui/f/g$j;->f:Landroid/widget/ImageView;

    sget v0, Lcom/instabug/chat/R$drawable;->ibg_core_ic_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
