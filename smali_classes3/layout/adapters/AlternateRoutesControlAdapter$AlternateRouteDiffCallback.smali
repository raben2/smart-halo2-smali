.class public Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "AlternateRoutesControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/adapters/AlternateRoutesControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlternateRouteDiffCallback"
.end annotation


# instance fields
.field private newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;",
            ">;"
        }
    .end annotation
.end field

.field private oldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Llayout/adapters/AlternateRoutesControlAdapter;


# direct methods
.method public constructor <init>(Llayout/adapters/AlternateRoutesControlAdapter;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;",
            ">;",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;",
            ">;)V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->this$0:Llayout/adapters/AlternateRoutesControlAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 233
    iput-object p2, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->oldList:Ljava/util/List;

    .line 234
    iput-object p3, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->newList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2

    .line 254
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    .line 255
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    .line 257
    iget-boolean v0, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    iget-boolean v1, p2, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object p2, p2, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 249
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    iget-object p2, p2, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 244
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->newList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 239
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;->oldList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
