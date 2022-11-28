.class Llayout/LightViewFragment$2;
.super Ljava/lang/Object;
.source "LightViewFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/LightViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/LightViewFragment;


# direct methods
.method constructor <init>(Llayout/LightViewFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Llayout/LightViewFragment$2;->this$0:Llayout/LightViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 80
    invoke-static {}, Llayout/LightViewFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBrightnessChanged: "

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
    .locals 1

    .line 90
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 92
    iget-object v0, p0, Llayout/LightViewFragment$2;->this$0:Llayout/LightViewFragment;

    invoke-static {v0}, Llayout/LightViewFragment;->access$200(Llayout/LightViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/LightViewContract$Presenter;->setLightBrightness(I)V

    .line 94
    iget-object p1, p0, Llayout/LightViewFragment$2;->this$0:Llayout/LightViewFragment;

    iget-object p1, p1, Llayout/LightViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v0, Lbike/smarthalo/app/analytics/light/LightConfigType;->Brightness:Lbike/smarthalo/app/analytics/light/LightConfigType;

    invoke-static {v0}, Lbike/smarthalo/app/analytics/light/AnalyticsLight;->getLightConfigChangedEvent(Lbike/smarthalo/app/analytics/light/LightConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method
