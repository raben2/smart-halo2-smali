.class public final synthetic Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$fhbd6-4MNFLGgkISowOa7u6ELh8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHPastRide;


# direct methods
.method public synthetic constructor <init>(Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$fhbd6-4MNFLGgkISowOa7u6ELh8;->f$0:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    iput-object p2, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$fhbd6-4MNFLGgkISowOa7u6ELh8;->f$1:Lbike/smarthalo/app/models/SHPastRide;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$fhbd6-4MNFLGgkISowOa7u6ELh8;->f$0:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    iget-object v1, p0, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$fhbd6-4MNFLGgkISowOa7u6ELh8;->f$1:Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {v0, v1, p1, p2}, Llayout/adapters/FitnessDailyRidesListAdapter;->lambda$onBindViewHolder$2(Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
