.class public final synthetic Llayout/-$$Lambda$MapViewFragment$65iFI2_0wnvFzOT1Uey2dqM_E4k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Llayout/MapViewFragment;

.field private final synthetic f$1:Landroid/widget/ImageButton;


# direct methods
.method public synthetic constructor <init>(Llayout/MapViewFragment;Landroid/widget/ImageButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$MapViewFragment$65iFI2_0wnvFzOT1Uey2dqM_E4k;->f$0:Llayout/MapViewFragment;

    iput-object p2, p0, Llayout/-$$Lambda$MapViewFragment$65iFI2_0wnvFzOT1Uey2dqM_E4k;->f$1:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Llayout/-$$Lambda$MapViewFragment$65iFI2_0wnvFzOT1Uey2dqM_E4k;->f$0:Llayout/MapViewFragment;

    iget-object v1, p0, Llayout/-$$Lambda$MapViewFragment$65iFI2_0wnvFzOT1Uey2dqM_E4k;->f$1:Landroid/widget/ImageButton;

    invoke-static {v0, v1, p1}, Llayout/MapViewFragment;->lambda$setMapListeners$2(Llayout/MapViewFragment;Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method
