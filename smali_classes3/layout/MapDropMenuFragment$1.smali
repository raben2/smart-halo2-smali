.class Llayout/MapDropMenuFragment$1;
.super Ljava/lang/Object;
.source "MapDropMenuFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/MapDropMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 58
    iput-object p1, p0, Llayout/MapDropMenuFragment$1;->this$0:Llayout/MapDropMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 61
    invoke-static {}, Llayout/MapDropMenuFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged: new volume "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 73
    iget-object v0, p0, Llayout/MapDropMenuFragment$1;->this$0:Llayout/MapDropMenuFragment;

    invoke-static {v0}, Llayout/MapDropMenuFragment;->access$100(Llayout/MapDropMenuFragment;)Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;->Volume:Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getNavigationConfigChanged(Lbike/smarthalo/app/analytics/navigation/NavigationConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 75
    iget-object v0, p0, Llayout/MapDropMenuFragment$1;->this$0:Llayout/MapDropMenuFragment;

    invoke-static {v0}, Llayout/MapDropMenuFragment;->access$200(Llayout/MapDropMenuFragment;)Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/MapSettingsContract$Presenter;->setNavigationVolume(I)V

    return-void
.end method
