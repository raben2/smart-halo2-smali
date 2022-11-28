.class public final synthetic Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Llayout/FitnessPastRideListAdapter$onItemClickFunction;

.field private final synthetic f$1:Lbike/smarthalo/app/models/RideDay;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Llayout/FitnessPastRideListAdapter$onItemClickFunction;Lbike/smarthalo/app/models/RideDay;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;->f$0:Llayout/FitnessPastRideListAdapter$onItemClickFunction;

    iput-object p2, p0, Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;->f$1:Lbike/smarthalo/app/models/RideDay;

    iput-boolean p3, p0, Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;->f$0:Llayout/FitnessPastRideListAdapter$onItemClickFunction;

    iget-object v1, p0, Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;->f$1:Lbike/smarthalo/app/models/RideDay;

    iget-boolean v2, p0, Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;->f$2:Z

    invoke-static {v0, v1, v2, p1}, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->lambda$setOnClickListener$0(Llayout/FitnessPastRideListAdapter$onItemClickFunction;Lbike/smarthalo/app/models/RideDay;ZLandroid/view/View;)V

    return-void
.end method
