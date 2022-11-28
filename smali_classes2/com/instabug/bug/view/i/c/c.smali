.class public Lcom/instabug/bug/view/i/c/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VisualUserStepsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/instabug/bug/view/i/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/bug/view/i/c/e;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/bug/view/i/c/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/bug/view/i/c/c;->b:Ljava/util/ArrayList;

    .line 5
    iput-object p1, p0, Lcom/instabug/bug/view/i/c/c;->a:Lcom/instabug/bug/view/i/c/e;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/instabug/bug/model/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/model/c;

    return-object p1
.end method

.method public a(Lcom/instabug/bug/view/i/c/b;I)V
    .locals 0
    .param p1    # Lcom/instabug/bug/view/i/c/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p2}, Lcom/instabug/bug/view/i/c/c;->a(I)Lcom/instabug/bug/model/c;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcom/instabug/bug/view/i/c/b;->a(Lcom/instabug/bug/model/c;)V

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;)V"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/instabug/bug/view/i/c/a;

    iget-object v1, p0, Lcom/instabug/bug/view/i/c/c;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lcom/instabug/bug/view/i/c/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/instabug/bug/view/i/c/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    iget-object v1, p0, Lcom/instabug/bug/view/i/c/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/instabug/bug/view/i/c/b;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/bug/view/i/c/c;->a(Lcom/instabug/bug/view/i/c/b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/instabug/bug/view/i/c/c;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/instabug/bug/view/i/c/b;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/instabug/bug/view/i/c/b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/instabug/bug/R$layout;->ibg_bug_repro_steps_item:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/instabug/bug/view/i/c/b;

    iget-object v0, p0, Lcom/instabug/bug/view/i/c/c;->a:Lcom/instabug/bug/view/i/c/e;

    invoke-direct {p2, p1, v0}, Lcom/instabug/bug/view/i/c/b;-><init>(Landroid/view/View;Lcom/instabug/bug/view/i/c/e;)V

    return-object p2
.end method
