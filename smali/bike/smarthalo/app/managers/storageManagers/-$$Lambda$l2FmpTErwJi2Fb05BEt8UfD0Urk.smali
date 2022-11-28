.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$l2FmpTErwJi2Fb05BEt8UfD0Urk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$l2FmpTErwJi2Fb05BEt8UfD0Urk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$l2FmpTErwJi2Fb05BEt8UfD0Urk;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$l2FmpTErwJi2Fb05BEt8UfD0Urk;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$l2FmpTErwJi2Fb05BEt8UfD0Urk;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$l2FmpTErwJi2Fb05BEt8UfD0Urk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/realm/RealmResults;

    invoke-interface {p1}, Lio/realm/internal/ManagableObject;->isValid()Z

    move-result p1

    return p1
.end method
