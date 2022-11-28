.class public final synthetic Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Llayout/adapters/FitnessDailyRidesListAdapter;

.field private final synthetic f$1:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

.field private final synthetic f$2:Lbike/smarthalo/app/models/SHPastRide;


# direct methods
.method public synthetic constructor <init>(Llayout/adapters/FitnessDailyRidesListAdapter;Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;->f$0:Llayout/adapters/FitnessDailyRidesListAdapter;

    iput-object p2, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;->f$1:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    iput-object p3, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;->f$2:Lbike/smarthalo/app/models/SHPastRide;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;->f$0:Llayout/adapters/FitnessDailyRidesListAdapter;

    iget-object v1, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;->f$1:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    iget-object v2, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;->f$2:Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {v0, v1, v2, p1}, Llayout/adapters/FitnessDailyRidesListAdapter;->lambda$onBindViewHolder$0(Llayout/adapters/FitnessDailyRidesListAdapter;Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;Landroid/view/View;)V

    return-void
.end method
