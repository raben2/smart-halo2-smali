.class public final synthetic Llayout/adapters/-$$Lambda$DeviceListAdapter$8ltXJBDDqeCKo4M4ZqyJ3OW2NPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Llayout/adapters/DeviceListAdapter;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Llayout/adapters/DeviceListAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/adapters/-$$Lambda$DeviceListAdapter$8ltXJBDDqeCKo4M4ZqyJ3OW2NPg;->f$0:Llayout/adapters/DeviceListAdapter;

    iput-object p2, p0, Llayout/adapters/-$$Lambda$DeviceListAdapter$8ltXJBDDqeCKo4M4ZqyJ3OW2NPg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Llayout/adapters/-$$Lambda$DeviceListAdapter$8ltXJBDDqeCKo4M4ZqyJ3OW2NPg;->f$0:Llayout/adapters/DeviceListAdapter;

    iget-object v1, p0, Llayout/adapters/-$$Lambda$DeviceListAdapter$8ltXJBDDqeCKo4M4ZqyJ3OW2NPg;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Llayout/adapters/DeviceListAdapter;->lambda$setDeviceInfoClick$0(Llayout/adapters/DeviceListAdapter;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
