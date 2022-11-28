.class public final synthetic Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$XDMF900794w1IeaHWPqF5NTqAyc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/activities/MainActivity;

.field private final synthetic f$1:Lbike/smarthalo/app/models/dfu/DfuState;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$XDMF900794w1IeaHWPqF5NTqAyc;->f$0:Lbike/smarthalo/app/activities/MainActivity;

    iput-object p2, p0, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$XDMF900794w1IeaHWPqF5NTqAyc;->f$1:Lbike/smarthalo/app/models/dfu/DfuState;

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$XDMF900794w1IeaHWPqF5NTqAyc;->f$0:Lbike/smarthalo/app/activities/MainActivity;

    iget-object v1, p0, Lbike/smarthalo/app/activities/-$$Lambda$MainActivity$XDMF900794w1IeaHWPqF5NTqAyc;->f$1:Lbike/smarthalo/app/models/dfu/DfuState;

    invoke-static {v0, v1}, Lbike/smarthalo/app/activities/MainActivity;->lambda$onDFUStateChanged$7(Lbike/smarthalo/app/activities/MainActivity;Lbike/smarthalo/app/models/dfu/DfuState;)V

    return-void
.end method
