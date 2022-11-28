.class public Llayout/touchInputs/TouchInputsEditPage;
.super Ljava/lang/Object;
.source "TouchInputsEditPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isUserTester:Z

.field private listener:Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;

.field private parentLayout:Landroid/view/View;

.field private touchInputEditItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbike/smarthalo/app/models/TouchInputItemType;",
            "Llayout/touchInputs/TouchInputsEditItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;Z)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Llayout/touchInputs/TouchInputsEditPage;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Llayout/touchInputs/TouchInputsEditPage;->parentLayout:Landroid/view/View;

    .line 34
    iput-object p3, p0, Llayout/touchInputs/TouchInputsEditPage;->listener:Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;

    .line 35
    iput-boolean p4, p0, Llayout/touchInputs/TouchInputsEditPage;->isUserTester:Z

    .line 37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Llayout/touchInputs/TouchInputsEditPage;->touchInputEditItems:Ljava/util/Map;

    .line 39
    invoke-direct {p0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItemsMap()V

    return-void
.end method

.method private initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V
    .locals 1

    .line 60
    iget-object v0, p0, Llayout/touchInputs/TouchInputsEditPage;->parentLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Llayout/touchInputs/TouchInputsEditItem;

    .line 61
    new-instance v0, Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$NLpykBy2xVqLIo_4Zx_1qSwTP4k;

    invoke-direct {v0, p0, p2}, Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$NLpykBy2xVqLIo_4Zx_1qSwTP4k;-><init>(Llayout/touchInputs/TouchInputsEditPage;Lbike/smarthalo/app/models/TouchInputItemType;)V

    invoke-virtual {p1, v0}, Llayout/touchInputs/TouchInputsEditItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Llayout/touchInputs/TouchInputsEditItem;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Llayout/touchInputs/TouchInputsEditPage;->touchInputEditItems:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeEditItemsMap()V
    .locals 2

    .line 43
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationStop:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a04f4

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 44
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationMode:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a03a5

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 45
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationHome:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a0518

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 46
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->NavigationWork:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a0519

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 47
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->ProgressToDestination:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a042a

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 49
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a035f

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 50
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a0360

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 51
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->LightMode:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a035e

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 52
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->Clock:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a00f3

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 53
    sget-object v0, Lbike/smarthalo/app/models/TouchInputItemType;->Horn:Lbike/smarthalo/app/models/TouchInputItemType;

    const v1, 0x7f0a01f3

    invoke-direct {p0, v1, v0}, Llayout/touchInputs/TouchInputsEditPage;->initializeEditItem(ILbike/smarthalo/app/models/TouchInputItemType;)V

    .line 55
    iget-object v0, p0, Llayout/touchInputs/TouchInputsEditPage;->parentLayout:Landroid/view/View;

    const v1, 0x7f0a03b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    new-instance v1, Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$32v_lLn5H4z553Qt3Q4kdEraynw;

    invoke-direct {v1, p0}, Llayout/touchInputs/-$$Lambda$TouchInputsEditPage$32v_lLn5H4z553Qt3Q4kdEraynw;-><init>(Llayout/touchInputs/TouchInputsEditPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$initializeEditItem$1(Llayout/touchInputs/TouchInputsEditPage;Lbike/smarthalo/app/models/TouchInputItemType;Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p2, p0, Llayout/touchInputs/TouchInputsEditPage;->listener:Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;

    invoke-interface {p2, p1}, Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;->onFeatureSelected(Lbike/smarthalo/app/models/TouchInputItemType;)V

    return-void
.end method

.method public static synthetic lambda$initializeEditItemsMap$0(Llayout/touchInputs/TouchInputsEditPage;Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditPage;->listener:Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;

    invoke-interface {p1}, Llayout/touchInputs/TouchInputsEditPage$TouchInputsEditPageListener;->onNoActionSelected()V

    return-void
.end method


# virtual methods
.method public configureItemsAvailability(Z)V
    .locals 8

    .line 96
    invoke-static {}, Lbike/smarthalo/app/models/TouchInputItemType;->values()[Lbike/smarthalo/app/models/TouchInputItemType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 97
    iget-object v5, p0, Llayout/touchInputs/TouchInputsEditPage;->touchInputEditItems:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llayout/touchInputs/TouchInputsEditItem;

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    const/4 v6, 0x1

    if-eqz p1, :cond_3

    .line 103
    sget-object v7, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v4, v7, :cond_2

    sget-object v7, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne v4, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-virtual {v5, v6}, Llayout/touchInputs/TouchInputsEditItem;->setIsEnabled(Z)V

    goto :goto_3

    .line 105
    :cond_3
    sget-object v7, Lbike/smarthalo/app/models/TouchInputItemType;->Light:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lbike/smarthalo/app/models/TouchInputItemType;->LightModeCycle:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v4, v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Llayout/touchInputs/TouchInputsEditItem;->setIsEnabled(Z)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public onTouchInputsReady(Ljava/util/List;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ">;",
            "Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;",
            ")V"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lbike/smarthalo/app/models/TouchInputItemType;->values()[Lbike/smarthalo/app/models/TouchInputItemType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;

    .line 76
    iget-object v3, v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v4, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v3, p0, Llayout/touchInputs/TouchInputsEditPage;->touchInputEditItems:Ljava/util/Map;

    iget-object v4, v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llayout/touchInputs/TouchInputsEditItem;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    .line 82
    iget-object v4, p2, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    iget-object v5, v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v3, v1, v2}, Llayout/touchInputs/TouchInputsEditItem;->configureVisuals(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V

    .line 83
    iget-object v1, v1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/TouchInputItemType;

    .line 88
    iget-object v0, p0, Llayout/touchInputs/TouchInputsEditPage;->touchInputEditItems:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llayout/touchInputs/TouchInputsEditItem;

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p2, v0, v2}, Llayout/touchInputs/TouchInputsEditItem;->configureVisuals(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public selectItem(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 2
    .param p1    # Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Llayout/touchInputs/TouchInputsEditPage;->touchInputEditItems:Ljava/util/Map;

    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llayout/touchInputs/TouchInputsEditItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, p1, v1}, Llayout/touchInputs/TouchInputsEditItem;->configureVisuals(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V

    .line 118
    :cond_0
    invoke-virtual {p0, p2}, Llayout/touchInputs/TouchInputsEditPage;->unselectItem(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V

    return-void
.end method

.method public unselectItem(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    sget-object v1, Lbike/smarthalo/app/models/TouchInputItemType;->None:Lbike/smarthalo/app/models/TouchInputItemType;

    if-eq v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Llayout/touchInputs/TouchInputsEditPage;->touchInputEditItems:Ljava/util/Map;

    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->type:Lbike/smarthalo/app/models/TouchInputItemType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llayout/touchInputs/TouchInputsEditItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, p1, v1}, Llayout/touchInputs/TouchInputsEditItem;->configureVisuals(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V

    :cond_0
    return-void
.end method
