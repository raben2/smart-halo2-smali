.class Llayout/MapDropMenuFragment$2;
.super Ljava/lang/Object;
.source "MapDropMenuFragment.java"

# interfaces
.implements Llayout/SettingsSwitch$SettingButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/MapDropMenuFragment;->setupModeButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/MapDropMenuFragment;


# direct methods
.method constructor <init>(Llayout/MapDropMenuFragment;)V
    .locals 0

    .line 94
    iput-object p1, p0, Llayout/MapDropMenuFragment$2;->this$0:Llayout/MapDropMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftButtonPressed()V
    .locals 2

    .line 97
    iget-object v0, p0, Llayout/MapDropMenuFragment$2;->this$0:Llayout/MapDropMenuFragment;

    invoke-static {v0}, Llayout/MapDropMenuFragment;->access$300(Llayout/MapDropMenuFragment;)V

    .line 98
    iget-object v0, p0, Llayout/MapDropMenuFragment$2;->this$0:Llayout/MapDropMenuFragment;

    invoke-static {v0}, Llayout/MapDropMenuFragment;->access$100(Llayout/MapDropMenuFragment;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;->Mode:Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getNavigationConfigChanged(Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method

.method public onRightButtonPressed()V
    .locals 2

    .line 103
    iget-object v0, p0, Llayout/MapDropMenuFragment$2;->this$0:Llayout/MapDropMenuFragment;

    invoke-static {v0}, Llayout/MapDropMenuFragment;->access$400(Llayout/MapDropMenuFragment;)V

    .line 104
    iget-object v0, p0, Llayout/MapDropMenuFragment$2;->this$0:Llayout/MapDropMenuFragment;

    invoke-static {v0}, Llayout/MapDropMenuFragment;->access$100(Llayout/MapDropMenuFragment;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;->Mode:Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getNavigationConfigChanged(Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method
