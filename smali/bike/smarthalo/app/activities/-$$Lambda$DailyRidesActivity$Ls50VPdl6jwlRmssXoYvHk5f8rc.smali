.class public final synthetic Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$Ls50VPdl6jwlRmssXoYvHk5f8rc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Llayout/adapters/ListAlertDialogAdapter$ItemClickListener;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/activities/DailyRidesActivity;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHPastRide;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$Ls50VPdl6jwlRmssXoYvHk5f8rc;->f$0:Lbike/smarthalo/app/activities/DailyRidesActivity;

    iput-object p2, p0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$Ls50VPdl6jwlRmssXoYvHk5f8rc;->f$1:Lbike/smarthalo/app/models/SHPastRide;

    return-void
.end method


# virtual methods
.method public final onItemClicked(I)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$Ls50VPdl6jwlRmssXoYvHk5f8rc;->f$0:Lbike/smarthalo/app/activities/DailyRidesActivity;

    iget-object v1, p0, Lbike/smarthalo/app/activities/-$$Lambda$DailyRidesActivity$Ls50VPdl6jwlRmssXoYvHk5f8rc;->f$1:Lbike/smarthalo/app/models/SHPastRide;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->lambda$showAlertDialog$9(Lbike/smarthalo/app/activities/DailyRidesActivity;Lbike/smarthalo/app/models/SHPastRide;I)V

    return-void
.end method
