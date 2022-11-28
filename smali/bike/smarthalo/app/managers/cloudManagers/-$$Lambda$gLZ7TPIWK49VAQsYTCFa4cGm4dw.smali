.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;->INSTANCE:Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$gLZ7TPIWK49VAQsYTCFa4cGm4dw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
