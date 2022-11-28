.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$soKJbYfx6P9tsEpuMs0ypLPqcmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/models/AlarmUpdateCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/TapcodePresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$soKJbYfx6P9tsEpuMs0ypLPqcmM;->f$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$soKJbYfx6P9tsEpuMs0ypLPqcmM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResponse(Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$soKJbYfx6P9tsEpuMs0ypLPqcmM;->f$0:Lbike/smarthalo/app/presenters/TapcodePresenter;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$soKJbYfx6P9tsEpuMs0ypLPqcmM;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/presenters/TapcodePresenter;->lambda$setTapCode$1(Lbike/smarthalo/app/presenters/TapcodePresenter;Ljava/lang/String;Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V

    return-void
.end method
