.class Llayout/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/SearchFragment;


# direct methods
.method constructor <init>(Llayout/SearchFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Llayout/SearchFragment$2;->this$0:Llayout/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    iget-object p1, p0, Llayout/SearchFragment$2;->this$0:Llayout/SearchFragment;

    invoke-virtual {p1}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHKeyboardHelper;->hideKeyboard(Landroid/app/Activity;)V

    .line 133
    iget-object p1, p0, Llayout/SearchFragment$2;->this$0:Llayout/SearchFragment;

    invoke-static {p1}, Llayout/SearchFragment;->access$200(Llayout/SearchFragment;)Llayout/ViewContracts/SearchConsumerContract;

    move-result-object p1

    invoke-interface {p1}, Llayout/ViewContracts/SearchConsumerContract;->onGPXListSelected()V

    .line 134
    iget-object p1, p0, Llayout/SearchFragment$2;->this$0:Llayout/SearchFragment;

    iget-object p1, p1, Llayout/SearchFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v0, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->GPX:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    invoke-static {v0}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getDestinationSelectedEvent(Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method
