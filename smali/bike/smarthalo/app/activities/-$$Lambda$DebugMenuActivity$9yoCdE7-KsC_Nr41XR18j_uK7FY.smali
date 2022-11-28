.class public final synthetic Lbike/smarthalo/app/activities/-$$Lambda$DebugMenuActivity$9yoCdE7-KsC_Nr41XR18j_uK7FY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/activities/DebugMenuActivity;

.field private final synthetic f$1:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/activities/DebugMenuActivity;Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/activities/-$$Lambda$DebugMenuActivity$9yoCdE7-KsC_Nr41XR18j_uK7FY;->f$0:Lbike/smarthalo/app/activities/DebugMenuActivity;

    iput-object p2, p0, Lbike/smarthalo/app/activities/-$$Lambda$DebugMenuActivity$9yoCdE7-KsC_Nr41XR18j_uK7FY;->f$1:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/activities/-$$Lambda$DebugMenuActivity$9yoCdE7-KsC_Nr41XR18j_uK7FY;->f$0:Lbike/smarthalo/app/activities/DebugMenuActivity;

    iget-object v1, p0, Lbike/smarthalo/app/activities/-$$Lambda$DebugMenuActivity$9yoCdE7-KsC_Nr41XR18j_uK7FY;->f$1:Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/activities/DebugMenuActivity;->lambda$initializeDebugItem$0(Lbike/smarthalo/app/activities/DebugMenuActivity;Lbike/smarthalo/app/models/PresentationModels/DebugMenuItemType;Landroid/view/View;)V

    return-void
.end method
