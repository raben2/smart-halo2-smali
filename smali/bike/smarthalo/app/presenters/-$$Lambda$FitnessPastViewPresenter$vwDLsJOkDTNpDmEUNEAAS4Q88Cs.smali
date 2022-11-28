.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$vwDLsJOkDTNpDmEUNEAAS4Q88Cs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$vwDLsJOkDTNpDmEUNEAAS4Q88Cs;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$vwDLsJOkDTNpDmEUNEAAS4Q88Cs;->f$0:Ljava/util/List;

    invoke-static {v0}, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->lambda$prepareRideDays$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
