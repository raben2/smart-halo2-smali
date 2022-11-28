.class Llayout/LeftDrawerLayout$2;
.super Ljava/lang/Object;
.source "LeftDrawerLayout.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/LeftDrawerLayout;->onActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/LeftDrawerLayout;


# direct methods
.method constructor <init>(Llayout/LeftDrawerLayout;)V
    .locals 0

    .line 213
    iput-object p1, p0, Llayout/LeftDrawerLayout$2;->this$0:Llayout/LeftDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 229
    iget-object v0, p0, Llayout/LeftDrawerLayout$2;->this$0:Llayout/LeftDrawerLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Llayout/LeftDrawerLayout$2;->this$0:Llayout/LeftDrawerLayout;

    iget-object p1, p1, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->onDrawerClosed()V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    .line 221
    iget-object v0, p0, Llayout/LeftDrawerLayout$2;->this$0:Llayout/LeftDrawerLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Llayout/LeftDrawerLayout$2;->this$0:Llayout/LeftDrawerLayout;

    iget-object p1, p1, Llayout/LeftDrawerLayout;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/LeftDrawerContract$Presenter;->onDrawerOpened()V

    .line 223
    iget-object p1, p0, Llayout/LeftDrawerLayout$2;->this$0:Llayout/LeftDrawerLayout;

    iget-object p1, p1, Llayout/LeftDrawerLayout;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v0, "UserMenu"

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
