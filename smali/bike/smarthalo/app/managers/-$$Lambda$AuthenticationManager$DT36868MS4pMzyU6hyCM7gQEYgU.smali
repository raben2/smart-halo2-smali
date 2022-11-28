.class public final synthetic Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$DT36868MS4pMzyU6hyCM7gQEYgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/AuthenticationManager;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/AuthenticationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$DT36868MS4pMzyU6hyCM7gQEYgU;->f$0:Lbike/smarthalo/app/managers/AuthenticationManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/-$$Lambda$AuthenticationManager$DT36868MS4pMzyU6hyCM7gQEYgU;->f$0:Lbike/smarthalo/app/managers/AuthenticationManager;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/AuthenticationManager;->lambda$login$2(Lbike/smarthalo/app/managers/AuthenticationManager;Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;

    move-result-object p1

    return-object p1
.end method
