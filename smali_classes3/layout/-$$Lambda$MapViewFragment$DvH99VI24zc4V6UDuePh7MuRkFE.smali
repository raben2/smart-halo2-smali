.class public final synthetic Llayout/-$$Lambda$MapViewFragment$DvH99VI24zc4V6UDuePh7MuRkFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Llayout/MapViewFragment;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Llayout/MapViewFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$MapViewFragment$DvH99VI24zc4V6UDuePh7MuRkFE;->f$0:Llayout/MapViewFragment;

    iput-object p2, p0, Llayout/-$$Lambda$MapViewFragment$DvH99VI24zc4V6UDuePh7MuRkFE;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llayout/-$$Lambda$MapViewFragment$DvH99VI24zc4V6UDuePh7MuRkFE;->f$0:Llayout/MapViewFragment;

    iget-object v1, p0, Llayout/-$$Lambda$MapViewFragment$DvH99VI24zc4V6UDuePh7MuRkFE;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Llayout/MapViewFragment;->lambda$onActivityResult$9(Llayout/MapViewFragment;Landroid/net/Uri;)V

    return-void
.end method
