.class public Llayout/adapters/DeviceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/adapters/DeviceListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Llayout/adapters/DeviceListAdapter;->context:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/adapters/DeviceListAdapter;->devices:Ljava/util/List;

    const-string v0, "layout_inflater"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Llayout/adapters/DeviceListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic lambda$setDeviceInfoClick$0(Llayout/adapters/DeviceListAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 130
    iget-object p2, p0, Llayout/adapters/DeviceListAdapter;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Llayout/customControls/DeviceIdAlertDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private setDeviceInfoClick(Llayout/adapters/DeviceListAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object p1, p1, Llayout/adapters/DeviceListAdapter$ViewHolder;->deviceInfo:Landroid/view/View;

    new-instance v0, Llayout/adapters/-$$Lambda$DeviceListAdapter$8ltXJBDDqeCKo4M4ZqyJ3OW2NPg;

    invoke-direct {v0, p0, p2}, Llayout/adapters/-$$Lambda$DeviceListAdapter$8ltXJBDDqeCKo4M4ZqyJ3OW2NPg;-><init>(Llayout/adapters/DeviceListAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setItemVisibility(Llayout/adapters/DeviceListAdapter$ViewHolder;Z)V
    .locals 4

    .line 134
    iget-object v0, p1, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerItem:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 135
    iget-object p1, p1, Llayout/adapters/DeviceListAdapter$ViewHolder;->deviceItem:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearDeviceList()V
    .locals 1

    .line 50
    iget-object v0, p0, Llayout/adapters/DeviceListAdapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    invoke-virtual {p0}, Llayout/adapters/DeviceListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Llayout/adapters/DeviceListAdapter;->devices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDevice(I)Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;
    .locals 1

    .line 55
    iget-object v0, p0, Llayout/adapters/DeviceListAdapter;->devices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 65
    iget-object v0, p0, Llayout/adapters/DeviceListAdapter;->devices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Llayout/adapters/DeviceListAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0115

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance p3, Llayout/adapters/DeviceListAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Llayout/adapters/DeviceListAdapter$ViewHolder;-><init>(Llayout/adapters/DeviceListAdapter;Llayout/adapters/DeviceListAdapter$1;)V

    const v0, 0x7f0a01d2

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerDescription:Landroid/widget/TextView;

    const v0, 0x7f0a01d3

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a01d4

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerItem:Landroid/view/ViewGroup;

    const v0, 0x7f0a013b

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    const v0, 0x7f0a013d

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->deviceItem:Landroid/view/ViewGroup;

    const v0, 0x7f0a013c

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->deviceInfo:Landroid/view/View;

    .line 98
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Llayout/adapters/DeviceListAdapter$ViewHolder;

    .line 103
    :goto_0
    iget-object v0, p0, Llayout/adapters/DeviceListAdapter;->devices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;

    .line 105
    sget-object v0, Llayout/adapters/DeviceListAdapter$1;->$SwitchMap$bike$smarthalo$app$models$PresentationModels$DeviceListItem$DeviceListItemType:[I

    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->itemType:Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f0602d6

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 119
    :pswitch_0
    invoke-direct {p0, p3, v2}, Llayout/adapters/DeviceListAdapter;->setItemVisibility(Llayout/adapters/DeviceListAdapter$ViewHolder;Z)V

    .line 120
    iget-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerDescription:Landroid/widget/TextView;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->description:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerIcon:Landroid/widget/ImageView;

    const v0, 0x7f08020e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object p1, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerIcon:Landroid/widget/ImageView;

    iget-object p3, p0, Llayout/adapters/DeviceListAdapter;->context:Landroid/content/Context;

    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-direct {p0, p3, v2}, Llayout/adapters/DeviceListAdapter;->setItemVisibility(Llayout/adapters/DeviceListAdapter$ViewHolder;Z)V

    .line 114
    iget-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerDescription:Landroid/widget/TextView;

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->description:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p1, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerIcon:Landroid/widget/ImageView;

    const v0, 0x7f0801cd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object p1, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->headerIcon:Landroid/widget/ImageView;

    iget-object p3, p0, Llayout/adapters/DeviceListAdapter;->context:Landroid/content/Context;

    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p3, v0}, Llayout/adapters/DeviceListAdapter;->setItemVisibility(Llayout/adapters/DeviceListAdapter$ViewHolder;Z)V

    .line 109
    iget-object v0, p3, Llayout/adapters/DeviceListAdapter$ViewHolder;->deviceDescription:Landroid/widget/TextView;

    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->bleDevice:Lbike/smarthalo/sdk/models/BleDevice;

    iget-object p1, p1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-direct {p0, p3, p1}, Llayout/adapters/DeviceListAdapter;->setDeviceInfoClick(Llayout/adapters/DeviceListAdapter$ViewHolder;Ljava/lang/String;)V

    :goto_1
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public replaceDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Llayout/adapters/DeviceListAdapter;->devices:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Llayout/adapters/DeviceListAdapter;->notifyDataSetChanged()V

    return-void
.end method
