.class Llayout/RightDrawerLayout$1;
.super Ljava/lang/Object;
.source "RightDrawerLayout.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/RightDrawerLayout;->initDrawerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/RightDrawerLayout;


# direct methods
.method constructor <init>(Llayout/RightDrawerLayout;)V
    .locals 0

    .line 162
    iput-object p1, p0, Llayout/RightDrawerLayout$1;->this$0:Llayout/RightDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object v0, p0, Llayout/RightDrawerLayout$1;->this$0:Llayout/RightDrawerLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Llayout/RightDrawerLayout$1;->this$0:Llayout/RightDrawerLayout;

    invoke-static {p1}, Llayout/RightDrawerLayout;->access$000(Llayout/RightDrawerLayout;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object p1

    const-string v0, "DeviceMenu"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    return-void
.end method
