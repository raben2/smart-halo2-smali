.class public Llayout/adapters/AlternateRoutesControlAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AlternateRoutesControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteSelectionListener;,
        Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;,
        Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIST_RESIZE_DELAY:I = 0x190


# instance fields
.field private alternateRouteItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listener:Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteSelectionListener;

.field private parent:Landroidx/recyclerview/widget/RecyclerView;

.field private visibleRouteItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteSelectionListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->alternateRouteItems:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    .line 39
    iput-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Llayout/adapters/AlternateRoutesControlAdapter;->listener:Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteSelectionListener;

    .line 41
    iput-object p3, p0, Llayout/adapters/AlternateRoutesControlAdapter;->parent:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Llayout/adapters/AlternateRoutesControlAdapter;ILandroid/view/View;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Llayout/adapters/AlternateRoutesControlAdapter;->resizeViewOnListChanged()V

    .line 170
    invoke-direct {p0, p1}, Llayout/adapters/AlternateRoutesControlAdapter;->onItemClicked(I)V

    return-void
.end method

.method public static synthetic lambda$resizeViewOnListChanged$1(Llayout/adapters/AlternateRoutesControlAdapter;)V
    .locals 5

    .line 178
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->parent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    const/16 v3, 0xa0

    .line 181
    invoke-static {v2, v3}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x2

    const/16 v4, 0x35

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 178
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic lambda$resizeViewOnListChanged$2(Llayout/adapters/AlternateRoutesControlAdapter;)V
    .locals 4

    .line 187
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->parent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x35

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onItemClicked(I)V
    .locals 6

    if-ltz p1, :cond_2

    .line 92
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 93
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    iget-object v1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;-><init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;)V

    .line 94
    iget-boolean p1, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    .line 96
    iput-boolean v1, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v3, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 101
    iget-object v1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->alternateRouteItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    .line 102
    iget-object v4, v3, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v5, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-eq v4, v5, :cond_0

    .line 103
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    invoke-direct {v4, v3}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;-><init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    new-instance v1, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;

    iget-object v3, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-direct {v1, p0, v3, v2}, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;-><init>(Llayout/adapters/AlternateRoutesControlAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    .line 109
    iget-object v3, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 110
    iget-object v3, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_2

    .line 114
    iget-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->listener:Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteSelectionListener;

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-interface {p1, v0}, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteSelectionListener;->onAlternateRouteSelected(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    :cond_2
    return-void
.end method

.method private resizeViewOnListChanged()V
    .locals 4

    .line 175
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x190

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 176
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Llayout/adapters/-$$Lambda$AlternateRoutesControlAdapter$Hr26Uel44y2lOAhLHS8c6LhRfgg;

    invoke-direct {v3, p0}, Llayout/adapters/-$$Lambda$AlternateRoutesControlAdapter$Hr26Uel44y2lOAhLHS8c6LhRfgg;-><init>(Llayout/adapters/AlternateRoutesControlAdapter;)V

    .line 177
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Llayout/adapters/-$$Lambda$AlternateRoutesControlAdapter$F1RAK2FWCZS0LW-PSHAgzz1P14o;

    invoke-direct {v3, p0}, Llayout/adapters/-$$Lambda$AlternateRoutesControlAdapter$F1RAK2FWCZS0LW-PSHAgzz1P14o;-><init>(Llayout/adapters/AlternateRoutesControlAdapter;)V

    .line 186
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Llayout/adapters/AlternateRoutesControlAdapter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Llayout/adapters/AlternateRoutesControlAdapter;->resizeViewOnListChanged()V

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Llayout/adapters/AlternateRoutesControlAdapter;->onItemClicked(I)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 200
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 54
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Llayout/adapters/AlternateRoutesControlAdapter;->onBindViewHolder(Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;I)V
    .locals 5

    .line 121
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    .line 123
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->time:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    invoke-static {v3, v4}, Lbike/smarthalo/app/helpers/DateHelper;->getPrettyTime(Ljava/lang/Long;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget-object v1, Llayout/adapters/AlternateRoutesControlAdapter$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$AlternateRouteType:[I

    iget-object v2, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 148
    :pswitch_0
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f11029e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    if-eqz v2, :cond_0

    const v2, 0x7f08006f

    goto :goto_0

    :cond_0
    const v2, 0x7f08006d

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 141
    :pswitch_1
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f1102a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    if-eqz v2, :cond_1

    const v2, 0x7f080079

    goto :goto_1

    :cond_1
    const v2, 0x7f080077

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 134
    :pswitch_2
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f11029d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    if-eqz v2, :cond_2

    const v2, 0x7f08006b

    goto :goto_2

    :cond_2
    const v2, 0x7f080069

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 127
    :pswitch_3
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->description:Landroid/widget/TextView;

    const v2, 0x7f11029f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v2, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    if-eqz v2, :cond_3

    const v2, 0x7f080075

    goto :goto_3

    :cond_3
    const v2, 0x7f080073

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :goto_4
    iget-boolean v0, v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0602d8

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 158
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->background:Landroid/widget/LinearLayout;

    iget-object v2, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    const v3, 0x7f08007b

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 162
    :cond_4
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    const v1, 0x7f06007e

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 163
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->background:Landroid/widget/LinearLayout;

    iget-object v2, p0, Llayout/adapters/AlternateRoutesControlAdapter;->context:Landroid/content/Context;

    const v3, 0x7f080071

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    :goto_5
    iget-object p1, p1, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Llayout/adapters/-$$Lambda$AlternateRoutesControlAdapter$fsBgkkmaOK9FOUvWeCDJgtkESvc;

    invoke-direct {v0, p0, p2}, Llayout/adapters/-$$Lambda$AlternateRoutesControlAdapter$fsBgkkmaOK9FOUvWeCDJgtkESvc;-><init>(Llayout/adapters/AlternateRoutesControlAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Llayout/adapters/AlternateRoutesControlAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0030

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Llayout/adapters/AlternateRoutesControlAdapter$ViewHolder;-><init>(Llayout/adapters/AlternateRoutesControlAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onNewData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;",
            ">;)V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->alternateRouteItems:Ljava/util/List;

    .line 220
    new-instance p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->alternateRouteItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    invoke-direct {p1, v0}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;-><init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;)V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    .line 222
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p0}, Llayout/adapters/AlternateRoutesControlAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public selectAlternateRoute(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 5

    .line 65
    iget-object v0, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v2, p0, Llayout/adapters/AlternateRoutesControlAdapter;->alternateRouteItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    .line 68
    iget-object v4, v3, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne v4, p1, :cond_0

    .line 69
    new-instance p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    invoke-direct {p1, v3}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;-><init>(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;)V

    .line 70
    iput-boolean v1, p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->isSelected:Z

    .line 71
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    new-instance p1, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;

    iget-object v1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-direct {p1, p0, v1, v0}, Llayout/adapters/AlternateRoutesControlAdapter$AlternateRouteDiffCallback;-><init>(Llayout/adapters/AlternateRoutesControlAdapter;Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    .line 76
    iget-object v1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 77
    iget-object v1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 81
    iget-object v1, p0, Llayout/adapters/AlternateRoutesControlAdapter;->visibleRouteItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;

    .line 82
    iget-object v1, v1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteItem;->type:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    if-ne v1, p1, :cond_3

    .line 83
    invoke-direct {p0}, Llayout/adapters/AlternateRoutesControlAdapter;->resizeViewOnListChanged()V

    .line 84
    invoke-direct {p0, v0}, Llayout/adapters/AlternateRoutesControlAdapter;->onItemClicked(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
