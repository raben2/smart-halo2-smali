.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$Eb51ryaX9wTm4e85Xy-T_uqJS-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DailyRidesPresenter;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$Eb51ryaX9wTm4e85Xy-T_uqJS-o;->f$0:Lbike/smarthalo/app/presenters/DailyRidesPresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$Eb51ryaX9wTm4e85Xy-T_uqJS-o;->f$0:Lbike/smarthalo/app/presenters/DailyRidesPresenter;

    invoke-static {v0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->lambda$refreshViewOnDeleteRides$4(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V

    return-void
.end method
