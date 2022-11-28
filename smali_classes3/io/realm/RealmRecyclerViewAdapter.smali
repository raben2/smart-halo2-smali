.class public abstract Lio/realm/RealmRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RealmRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private adapterData:Lio/realm/OrderedRealmCollection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final hasAutoUpdates:Z

.field protected final inflater:Landroid/view/LayoutInflater;

.field private final listener:Lio/realm/RealmChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/realm/OrderedRealmCollection;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    if-eqz p1, :cond_1

    .line 55
    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 58
    iput-boolean p3, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    .line 63
    iget-boolean p1, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    if-eqz p1, :cond_0

    new-instance p1, Lio/realm/RealmRecyclerViewAdapter$1;

    invoke-direct {p1, p0}, Lio/realm/RealmRecyclerViewAdapter$1;-><init>(Lio/realm/RealmRecyclerViewAdapter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/RealmChangeListener;

    return-void

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addListener(Lio/realm/OrderedRealmCollection;)V
    .locals 3
    .param p1    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;)V"
        }
    .end annotation

    .line 151
    instance-of v0, p1, Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 152
    check-cast p1, Lio/realm/RealmResults;

    .line 154
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->addChangeListener(Lio/realm/RealmChangeListener;)V

    goto :goto_0

    .line 155
    :cond_0
    instance-of v0, p1, Lio/realm/RealmList;

    if-eqz v0, :cond_1

    .line 156
    check-cast p1, Lio/realm/RealmList;

    .line 158
    iget-object p1, p1, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/HandlerController;->addChangeListenerAsWeakReference(Lio/realm/RealmChangeListener;)V

    :goto_0
    return-void

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RealmCollection not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isDataValid()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/realm/OrderedRealmCollection;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeListener(Lio/realm/OrderedRealmCollection;)V
    .locals 3
    .param p1    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;)V"
        }
    .end annotation

    .line 165
    instance-of v0, p1, Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lio/realm/RealmResults;

    .line 167
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/RealmResults;->removeChangeListener(Lio/realm/RealmChangeListener;)V

    goto :goto_0

    .line 168
    :cond_0
    instance-of v0, p1, Lio/realm/RealmList;

    if-eqz v0, :cond_1

    .line 169
    check-cast p1, Lio/realm/RealmList;

    .line 171
    iget-object p1, p1, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/HandlerController;->removeWeakChangeListener(Lio/realm/RealmChangeListener;)V

    :goto_0
    return-void

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RealmCollection not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getData()Lio/realm/OrderedRealmCollection;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    return-object v0
.end method

.method public getItem(I)Lio/realm/RealmModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-interface {v0, p1}, Lio/realm/OrderedRealmCollection;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 104
    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-interface {v0}, Lio/realm/OrderedRealmCollection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 74
    iget-boolean p1, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-direct {p0, p1}, Lio/realm/RealmRecyclerViewAdapter;->addListener(Lio/realm/OrderedRealmCollection;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 83
    iget-boolean p1, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/realm/RealmRecyclerViewAdapter;->isDataValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    invoke-direct {p0, p1}, Lio/realm/RealmRecyclerViewAdapter;->removeListener(Lio/realm/OrderedRealmCollection;)V

    :cond_0
    return-void
.end method

.method public updateData(Lio/realm/OrderedRealmCollection;)V
    .locals 1
    .param p1    # Lio/realm/OrderedRealmCollection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;)V"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lio/realm/RealmRecyclerViewAdapter;->hasAutoUpdates:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, v0}, Lio/realm/RealmRecyclerViewAdapter;->removeListener(Lio/realm/OrderedRealmCollection;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lio/realm/RealmRecyclerViewAdapter;->addListener(Lio/realm/OrderedRealmCollection;)V

    .line 146
    :cond_1
    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    .line 147
    invoke-virtual {p0}, Lio/realm/RealmRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
