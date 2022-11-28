.class public Llayout/adapters/NotificationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationsAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Llayout/adapters/NotificationsAdapter;->context:Landroid/content/Context;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/Notification;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p2, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    .line 25
    iput-object p1, p0, Llayout/adapters/NotificationsAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addUniqueNotification(Lbike/smarthalo/app/models/PresentationModels/Notification;)V
    .locals 1

    .line 68
    iget-object v0, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Llayout/adapters/NotificationsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lbike/smarthalo/app/models/PresentationModels/Notification;
    .locals 1

    .line 46
    iget-object v0, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/Notification;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Llayout/adapters/NotificationsAdapter;->getItem(I)Lbike/smarthalo/app/models/PresentationModels/Notification;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 54
    new-instance p2, Llayout/NotificationItemLayout;

    iget-object p3, p0, Llayout/adapters/NotificationsAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Llayout/NotificationItemLayout;-><init>(Landroid/content/Context;)V

    .line 59
    :cond_0
    move-object p3, p2

    check-cast p3, Llayout/NotificationItemLayout;

    .line 61
    invoke-virtual {p0, p1}, Llayout/adapters/NotificationsAdapter;->getItem(I)Lbike/smarthalo/app/models/PresentationModels/Notification;

    move-result-object p1

    .line 62
    invoke-virtual {p3, p1}, Llayout/NotificationItemLayout;->updateLayoutContent(Lbike/smarthalo/app/models/PresentationModels/Notification;)V

    return-object p2
.end method

.method public safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)Z
    .locals 3

    .line 88
    iget-object v0, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/Notification;

    .line 89
    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/Notification;->getNotificationType()Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 96
    iget-object p1, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p0}, Llayout/adapters/NotificationsAdapter;->notifyDataSetChanged()V

    :cond_2
    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Llayout/adapters/NotificationsAdapter;->notifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Llayout/adapters/NotificationsAdapter;->notifyDataSetChanged()V

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
