.class public final synthetic Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$Dyc96rLoG9SWHGCZOubRlIfUEGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# instance fields
.field private final synthetic f$0:Llayout/mapAdapter/SHGoogleMapsMap;


# direct methods
.method public synthetic constructor <init>(Llayout/mapAdapter/SHGoogleMapsMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$Dyc96rLoG9SWHGCZOubRlIfUEGA;->f$0:Llayout/mapAdapter/SHGoogleMapsMap;

    return-void
.end method


# virtual methods
.method public final onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1

    iget-object v0, p0, Llayout/mapAdapter/-$$Lambda$SHGoogleMapsMap$Dyc96rLoG9SWHGCZOubRlIfUEGA;->f$0:Llayout/mapAdapter/SHGoogleMapsMap;

    invoke-static {v0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->lambda$setOnMarkerClickListener$5(Llayout/mapAdapter/SHGoogleMapsMap;Lcom/google/android/gms/maps/model/Marker;)Z

    move-result p1

    return p1
.end method
