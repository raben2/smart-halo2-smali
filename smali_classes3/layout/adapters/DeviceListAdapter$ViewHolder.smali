.class Llayout/adapters/DeviceListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/adapters/DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field deviceDescription:Landroid/widget/TextView;

.field deviceInfo:Landroid/view/View;

.field deviceItem:Landroid/view/ViewGroup;

.field headerDescription:Landroid/widget/TextView;

.field headerIcon:Landroid/widget/ImageView;

.field headerItem:Landroid/view/ViewGroup;

.field final synthetic this$0:Llayout/adapters/DeviceListAdapter;


# direct methods
.method private constructor <init>(Llayout/adapters/DeviceListAdapter;)V
    .locals 0

    .line 73
    iput-object p1, p0, Llayout/adapters/DeviceListAdapter$ViewHolder;->this$0:Llayout/adapters/DeviceListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llayout/adapters/DeviceListAdapter;Llayout/adapters/DeviceListAdapter$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Llayout/adapters/DeviceListAdapter$ViewHolder;-><init>(Llayout/adapters/DeviceListAdapter;)V

    return-void
.end method
