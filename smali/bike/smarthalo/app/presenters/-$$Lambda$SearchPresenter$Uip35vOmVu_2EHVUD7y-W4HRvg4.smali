.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Uip35vOmVu_2EHVUD7y-W4HRvg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager$LocationSearchResultListener;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Uip35vOmVu_2EHVUD7y-W4HRvg4;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Uip35vOmVu_2EHVUD7y-W4HRvg4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSearchResultsReady(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Uip35vOmVu_2EHVUD7y-W4HRvg4;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$Uip35vOmVu_2EHVUD7y-W4HRvg4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/SearchPresenter;->lambda$searchWithQuery$3(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
