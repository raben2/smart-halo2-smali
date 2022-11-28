.class Lcom/instabug/library/invocation/d/c$g;
.super Ljava/lang/Object;
.source "ScreenRecordingFab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic b:Lcom/instabug/library/invocation/d/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/c;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    iput-object p2, p0, Lcom/instabug/library/invocation/d/c$g;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->f(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/l/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$g;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v2}, Lcom/instabug/library/invocation/d/c;->f(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/l/f/a;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 4
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$g;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v1}, Lcom/instabug/library/invocation/d/c;->h(Lcom/instabug/library/invocation/d/c;)I

    move-result v1

    iget-object v2, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v2}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 5
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$g;->a:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v1}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    .line 6
    invoke-static {v2}, Lcom/instabug/library/invocation/d/c;->g(Lcom/instabug/library/invocation/d/c;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v3}, Lcom/instabug/library/invocation/d/c;->i(Lcom/instabug/library/invocation/d/c;)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v3}, Lcom/instabug/library/invocation/d/c;->f(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/l/f/a;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 8
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$g;->b:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->f(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/l/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/library/invocation/d/c$g;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
