create trigger no_update
on discos
  for update
  as
    raiserror('No SE PUEDE ACTUALIZAR ', 10, 1)
    rollback transaction