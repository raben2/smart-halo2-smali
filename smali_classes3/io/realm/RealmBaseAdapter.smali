.class public abstract Lio/realm/RealmBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "RealmBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/RealmModel;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected adapterData:Lio/realm/OrderedRealmCollection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/OrderedRealmCollection<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected inflater:Landroid/view/LayoutInflater;

.field private final listener:Lio/realm/RealmChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/realm/OrderedRealmCollection;)V
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
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-eqz p1, :cond_1

    .line 49
    iput-object p1, p0, Lio/realm/RealmBaseAdapter;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmBaseAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 52
    new-instance p1, Lio/realm/RealmBaseAdapter$1;

    invoke-direct {p1, p0}, Lio/realm/RealmBaseAdapter$1;-><init>(Lio/realm/RealmBaseAdapter;)V

    iput-object p1, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    if-eqz p2, :cond_0

    .line 60
    invoke-direct {p0, p2}, Lio/realm/RealmBaseAdapter;->addListener(Lio/realm/OrderedRealmCollection;)V

    :cond_0
    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

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

    .line 65
    instance-of v0, p1, Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lio/realm/RealmResults;

    .line 67
    iget-object p1, p1, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/HandlerController;->addChangeListenerAsWeakReference(Lio/realm/RealmChangeListener;)V

    goto :goto_0

    .line 68
    :cond_0
    instance-of v0, p1, Lio/realm/RealmList;

    if-eqz v0, :cond_1

    .line 69
    check-cast p1, Lio/realm/RealmList;

    .line 70
    iget-object p1, p1, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/HandlerController;->addChangeListenerAsWeakReference(Lio/realm/RealmChangeListener;)V

    :goto_0
    return-void

    .line 72
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

    .line 77
    instance-of v0, p1, Lio/realm/RealmResults;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Lio/realm/RealmResults;

    .line 79
    iget-object p1, p1, Lio/realm/RealmResults;->realm:Lio/realm/BaseRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/HandlerController;->removeWeakChangeListener(Lio/realm/RealmChangeListener;)V

    goto :goto_0

    .line 80
    :cond_0
    instance-of v0, p1, Lio/realm/RealmList;

    if-eqz v0, :cond_1

    .line 81
    check-cast p1, Lio/realm/RealmList;

    .line 82
    iget-object p1, p1, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object p1, p1, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    invoke-virtual {p1, v0}, Lio/realm/HandlerController;->removeWeakChangeListener(Lio/realm/RealmChangeListener;)V

    :goto_0
    return-void

    .line 84
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
.method public getCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    invoke-interface {v0}, Lio/realm/OrderedRealmCollection;->size()I

    move-result v0

    return v0
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

    .line 111
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_0
    invoke-interface {v0, p1}, Lio/realm/OrderedRealmCollection;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/RealmModel;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lio/realm/RealmBaseAdapter;->getItem(I)Lio/realm/RealmModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
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

    .line 143
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->listener:Lio/realm/RealmChangeListener;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, v0}, Lio/realm/RealmBaseAdapter;->removeListener(Lio/realm/OrderedRealmCollection;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 148
    invoke-direct {p0, p1}, Lio/realm/RealmBaseAdapter;->addListener(Lio/realm/OrderedRealmCollection;)V

    .line 152
    :cond_1
    iput-object p1, p0, Lio/realm/RealmBaseAdapter;->adapterData:Lio/realm/OrderedRealmCollection;

    .line 153
    invoke-virtual {p0}, Lio/realm/RealmBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
