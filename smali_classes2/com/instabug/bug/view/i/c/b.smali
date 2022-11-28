.class public Lcom/instabug/bug/view/i/c/b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VisualUserStepItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private e:Lcom/instabug/bug/view/i/c/e;

.field private f:Lcom/instabug/bug/model/c;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/instabug/bug/view/i/c/e;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_repro_step_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/bug/view/i/c/b;->b:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_repro_step_sub_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instabug/bug/view/i/c/b;->d:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_repro_step_screenshot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instabug/bug/view/i/c/b;->c:Landroid/widget/ImageView;

    .line 5
    sget v0, Lcom/instabug/bug/R$id;->ib_bug_repro_step_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/b;->a:Landroid/widget/ImageView;

    .line 6
    iput-object p2, p0, Lcom/instabug/bug/view/i/c/b;->e:Lcom/instabug/bug/view/i/c/e;

    return-void
.end method


# virtual methods
.method a(Lcom/instabug/bug/model/c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/i/c/b;->f:Lcom/instabug/bug/model/c;

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/instabug/bug/R$string;->IBGReproStepsListItemName:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/instabug/bug/model/c;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/bug/view/i/c/b;->g:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/instabug/bug/view/i/c/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/b;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instabug/bug/model/c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/instabug/bug/model/c;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/b;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/instabug/bug/model/c;->c()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/b;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/b;->e:Lcom/instabug/bug/view/i/c/e;

    iget-object v0, p0, Lcom/instabug/bug/view/i/c/b;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/instabug/bug/view/i/c/b;->f:Lcom/instabug/bug/model/c;

    invoke-virtual {v1}, Lcom/instabug/bug/model/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/instabug/bug/view/i/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/instabug/bug/R$id;->ib_bug_repro_step_delete:I

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/b;->e:Lcom/instabug/bug/view/i/c/e;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/instabug/bug/view/i/c/b;->f:Lcom/instabug/bug/model/c;

    invoke-interface {p1, v0, v1}, Lcom/instabug/bug/view/i/c/e;->a(ILcom/instabug/bug/model/c;)V

    :cond_1
    :goto_0
    return-void
.end method
