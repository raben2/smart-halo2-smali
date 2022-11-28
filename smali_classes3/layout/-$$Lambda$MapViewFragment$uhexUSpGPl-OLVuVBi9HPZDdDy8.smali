.class public final synthetic Llayout/-$$Lambda$MapViewFragment$uhexUSpGPl-OLVuVBi9HPZDdDy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Llayout/MapViewFragment;

.field private final synthetic f$1:Lbike/smarthalo/app/models/PresentationNavigationState;


# direct methods
.method public synthetic constructor <init>(Llayout/MapViewFragment;Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$MapViewFragment$uhexUSpGPl-OLVuVBi9HPZDdDy8;->f$0:Llayout/MapViewFragment;

    iput-object p2, p0, Llayout/-$$Lambda$MapViewFragment$uhexUSpGPl-OLVuVBi9HPZDdDy8;->f$1:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Llayout/-$$Lambda$MapViewFragment$uhexUSpGPl-OLVuVBi9HPZDdDy8;->f$0:Llayout/MapViewFragment;

    iget-object v1, p0, Llayout/-$$Lambda$MapViewFragment$uhexUSpGPl-OLVuVBi9HPZDdDy8;->f$1:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-static {v0, v1, p1, p2}, Llayout/MapViewFragment;->lambda$displayFavouriteOptions$7(Llayout/MapViewFragment;Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/content/DialogInterface;I)V

    return-void
.end method
